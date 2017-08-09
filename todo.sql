--drops table creates table each run
DROP TABLE if EXISTS todos;
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details text,
  priority  INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at  TIMESTAMP
);

INSERT INTO todos (
            title,
            details,
            priority,
            created_at,
            completed_at
          )

VALUES (
            'wash car',
            'mix some soap and water and wash car',
            1,
            '8/8/2017',
            '8/8/2017'
          ),
          (
            'clean my underoos',
            'mix some soap and water and wash underoos',
            10,
            '8/8/2017',
            '8/8/2017'
          ),
          (
            'walk the kronos monster',
            'walk my dog around the neighborhood',
            5,
            '8/8/2017',
            NULL
          ),
          (
            'take out the trash',
            'take the trash out and place in trash bin',
          4,
            '8/8/2017',
            NULL
          ),
          (
            'play Destiny 2',
            'whoop some dudes in the crucible and maybe complete a raid',
            8,
            '8/8/2017',
            NULL
          );

--show entire table
SELECT * FROM todos;

--write select statement to find all incomplete todos
SELECT title, completed_at
FROM todos
WHERE completed_at IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1
SELECT title, priority
FROM todos
WHERE priority > 1;
-- Write an UPDATE statement to complete one todo by its id.
UPDATE todos
SET completed_at = now()
WHERE id = 1;
-- Write a DELETE statement to delete all completed todos.
DELETE FROM todos
WHERE completed_at IS NOT NULL;
