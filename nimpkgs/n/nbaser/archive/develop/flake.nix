{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nbaser-archive/develop.flake = false;
  inputs.src-nbaser-archive/develop.type = "github";
  inputs.src-nbaser-archive/develop.owner = "D-Nice";
  inputs.src-nbaser-archive/develop.repo = "nbaser";
  inputs.src-nbaser-archive/develop.ref = "refs/heads/archive/develop";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nbaser-archive/develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nbaser-archive/develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nbaser-archive/develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}