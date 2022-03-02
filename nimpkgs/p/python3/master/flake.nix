{
  description = ''Wrapper to interface with the Python 3 interpreter'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-python3-master.flake = false;
  inputs.src-python3-master.type = "github";
  inputs.src-python3-master.owner = "matkuki";
  inputs.src-python3-master.repo = "python3";
  inputs.src-python3-master.ref = "refs/heads/master";
  inputs.src-python3-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-python3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-python3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-python3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}