{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nbaser-develop.flake = false;
  inputs.src-nbaser-develop.type = "github";
  inputs.src-nbaser-develop.owner = "d-Nice";
  inputs.src-nbaser-develop.repo = "nbaser";
  inputs.src-nbaser-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nbaser-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nbaser-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nbaser-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}