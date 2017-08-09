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
            '8/9/2017',
            '8/9/2017'
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
            '8/8/2016',
            NULL
          ),
          (
                      'finish weekly project',
                      'touch up and clean up some code on my weekly project',
                      1,
                      '8/9/2017',
                      '8/9/2017'
                    ),
                    (
                      'pay phone bill',
                      'login in to Tmobile and pay cell phone bill',
                      15,
                      '8/8/2017',
                      '8/8/2017'
                    ),
                    (
                      'build  a large Hadron Collider',
                      'tape some parts together, add a flux capacitor, connect some wires and add a start button',
                      13,
                      '9/10/2008',
                      NULL
                    ),
                    (
                      'cook dinner',
                      'bash chicken till its thin, cover chicken in flour, dip chicken in egg wash, cover chicken with breadcrumbs, fry chicken in skillet with some oil ',
                    4,
                      '2/9/2017',
                      '8/9/2017'
                    ),
                    (
                      'play some more Destiny 2',
                      'whoop some more dudes in the crucible, go flawless in trials of the nine and complete the nightfall ',
                      3,
                      '8/8/2016',
                      NULL
                    ),
                    (
                                'renew train card',
                                'go online and buy a new month for my train pass',
                                3,
                                '6/8/2017',
                                NULL
                              ),
                              (
                                'clean some more underoos',
                                'mix some soap and water and wash more underoos',
                                10,
                                '6/8/2017',
                                NULL
                              ),
                              (
                                'wash the kronos monster',
                                'push kronos into the bathtub, pour water on him, mix some soap and water, wash him, dry him off with a towel',
                                1,
                                '8/8/2017',
                                NULL
                              ),
                              (
                                'develop an app that solves a problem',
                                'thinks of a problem, make an app to solve that problem, sell said app, make millions of dollars',
                              3,
                                '8/8/2017',
                                NULL
                              ),
                              (
                                'don''t play more Destiny 2',
                                'stop playing more Destiny',
                                3,
                                '8/9/2017',
                                NULL
                              );


--show entire table
SELECT * FROM todos;

--Write a SELECT statement to find all incomplete todos with priority 3
SELECT title, priority
FROM todos
WHERE completed_at IS NULL AND priority = 3;

--Write a SELECT statement to find the number of incomplete todos by priority
SELECT title, priority
FROM todos
WHERE completed_at IS NULL ORDER BY priority ASC;
--Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT priority , created_at
FROM todos
WHERE created_at < CURRENT_DATE -30;
--Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first
SELECT MIN(created_at)
FROM todos
WHERE priority = 1 ;
