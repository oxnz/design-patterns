trait Migration {
    fn execute(&self);
    fn rollback(&self);
}

struct CreateIndex;
struct AddField;

impl Migration for CreateIndex {
    fn execute(&self) {
        println!("create index");
    }

    fn rollback(&self) {
        println!("remove index");
    }
}

impl Migration for AddField {
    fn execute(&self) {
        println!("add field");
    }

    fn rollback(&self) {
        println!("remove field");
    }
}

#[derive(Default)]
struct Schema {
    commands: Vec<Box<dyn Migration>>,
}

impl Schema {
    fn new() -> Self {
        Self::default()
    }

    fn add_migration(&mut self, migration: Box<dyn Migration>) {
        self.commands.push(migration);
    }
}

impl Migration for Schema {
    fn execute(&self) {
        println!("exec schema");
        self.commands.iter().for_each(|cmd| {
            cmd.execute();
        });
    }

    fn rollback(&self) {
        println!("remove schema");
        self.commands.iter().rev().for_each(|cmd| {
            cmd.rollback();
        });
    }
}

fn main() {
    println!("Hello, world!");
    let mut schema = Schema::new();
    schema.add_migration(Box::new(CreateIndex));
    schema.add_migration(Box::new(AddField));
    schema.execute();
    schema.rollback();
}
