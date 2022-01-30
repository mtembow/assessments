from robot.libraries.BuiltIn import BuiltIn

class DuplicateListener:
    ROBOT_LISTENER_API_VERSION = 3
    def __init__(self):
        self.ROBOT_LIBRARY_LISTENER = self

    def fail_if_suite_has_duplicate_test_names(self):
        dupes = []
        suites = [test.name for test in self.current_suite.tests]
        while suites:
            test = suites.pop()
            if test in suites:
                dupes.append(test)
        if dupes:
            duplicates = ", ".join(sorted(dupes))
            raise Exception(f"Suite has duplicate test names: {duplicates}")

    def _start_suite(self, data, suite):
        self.current_suite = data