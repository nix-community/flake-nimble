{
  description = ''A dead code locator for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mort-master.flake = false;
  inputs.src-mort-master.type = "github";
  inputs.src-mort-master.owner = "jyapayne";
  inputs.src-mort-master.repo = "mort";
  inputs.src-mort-master.ref = "refs/heads/master";
  inputs.src-mort-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mort-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mort-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mort-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}