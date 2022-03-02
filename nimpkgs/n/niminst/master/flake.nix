{
  description = ''tool to generate installers for Nim programs'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-niminst-master.flake = false;
  inputs.src-niminst-master.type = "github";
  inputs.src-niminst-master.owner = "nim-lang";
  inputs.src-niminst-master.repo = "niminst";
  inputs.src-niminst-master.ref = "refs/heads/master";
  inputs.src-niminst-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-niminst-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niminst-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niminst-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}