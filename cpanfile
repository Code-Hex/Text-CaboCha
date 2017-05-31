requires 'Devel::CheckLib';

on 'test' => sub {
    requires 'Test::More';
    requires 'Test::Valgrind';
    requires 'Test::LeakTrace';
};

