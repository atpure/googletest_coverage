#include "absol.h"
#include <gtest/gtest.h>
 
TEST(AbsTest, PositiveNos) { 
    ASSERT_EQ(6, absol_f(3, 9));
}
 
