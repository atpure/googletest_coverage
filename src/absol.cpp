int absol_f(int a, int b) {
    int ret;

    if (a == b) {
        ret = 0;
    }

    if (a > b) {
        ret = a - b;
    } else {
        ret = b - a;
    }

    return ret;
}
