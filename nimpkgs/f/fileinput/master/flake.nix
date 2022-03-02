{
  description = ''iterate through files and lines'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fileinput-master.flake = false;
  inputs.src-fileinput-master.type = "github";
  inputs.src-fileinput-master.owner = "achesak";
  inputs.src-fileinput-master.repo = "nim-fileinput";
  inputs.src-fileinput-master.ref = "refs/heads/master";
  inputs.src-fileinput-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fileinput-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fileinput-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fileinput-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}