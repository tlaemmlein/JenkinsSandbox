#include <gtest/gtest.h>

class VeryImportantClassTest : public ::testing::Test
{
protected:
    VeryImportantClassTest() {}

    virtual ~VeryImportantClassTest() {}

    void SetUp() override
	{
		std::cout << __FUNCTION__ << std::endl;
	}

    void TearDown() override
	{
		std::cout << __FUNCTION__ << std::endl;
	}
};


TEST_F(VeryImportantClassTest, simpleExpectEq)
{
	const int expected = 1;
	const int actual =1;
    EXPECT_EQ(expected, actual);
}

