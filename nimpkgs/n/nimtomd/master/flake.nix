{
  description = ''Convert a Nim file or string to Markdown'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimtomd-master.flake = false;
  inputs.src-nimtomd-master.type = "github";
  inputs.src-nimtomd-master.owner = "ThomasTJdev";
  inputs.src-nimtomd-master.repo = "nimtomd";
  inputs.src-nimtomd-master.ref = "refs/heads/master";
  inputs.src-nimtomd-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimtomd-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtomd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimtomd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}