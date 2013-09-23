#ifndef TEXT_H
#define TEXT_H

class Text
{
public:
	Text(){}
	Text(const Text&) = delete;
	Text& operator=(const Text&) = delete;
	virtual ~Text();
};

class WinText : public Text
{
public:
	WinText(){}
	virtual ~WinText();
};

class UnixText : public Text
{
public:
	UnixText(){}
	virtual ~UnixText();
};

#endif//TEXT_H
