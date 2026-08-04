@echo off
set LMP=lmp

for %%I in (Ca) do (
  for %%W in (3.0 3.5 4.5 5.0) do (
    for %%T in (300 330 350) do (
        for %%F in (0.05 0.1 0.2 0.4) do (
          echo Running %%I %%W %%T %%F
          %LMP% -in in.main -sf gpu -pk gpu 1 ^
            -var ion %%I ^
            -var wt %%W ^
            -var T %%T ^
            -var push_force %%F ^  
        )
      )
    )
  )
)

pause
