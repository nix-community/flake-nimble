{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nbaser-master.flake = false;
  inputs.src-nbaser-master.type = "github";
  inputs.src-nbaser-master.owner = "D-Nice";
  inputs.src-nbaser-master.repo = "nbaser";
  inputs.src-nbaser-master.ref = "refs/heads/master";
  inputs.src-nbaser-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nbaser-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nbaser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nbaser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}