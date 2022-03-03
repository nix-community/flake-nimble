{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nbaser-develop.flake = false;
  inputs.src-nbaser-develop.type = "github";
  inputs.src-nbaser-develop.owner = "D-Nice";
  inputs.src-nbaser-develop.repo = "nbaser";
  inputs.src-nbaser-develop.ref = "refs/heads/develop";
  inputs.src-nbaser-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nbaser-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nbaser-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nbaser-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}