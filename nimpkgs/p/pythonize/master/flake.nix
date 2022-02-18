{
  description = ''A higher-level wrapper for the Python Programing Language'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pythonize-master.flake = false;
  inputs.src-pythonize-master.type = "github";
  inputs.src-pythonize-master.owner = "marcoapintoo";
  inputs.src-pythonize-master.repo = "nim-pythonize";
  inputs.src-pythonize-master.ref = "refs/heads/master";
  
  
  inputs."python".type = "github";
  inputs."python".owner = "riinr";
  inputs."python".repo = "flake-nimble";
  inputs."python".ref = "flake-pinning";
  inputs."python".dir = "nimpkgs/p/python";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pythonize-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pythonize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pythonize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}