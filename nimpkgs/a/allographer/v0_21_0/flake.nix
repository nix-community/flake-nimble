{
  description = ''A Nim query builder library inspired by Laravel/PHP and Orator/Python'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-allographer-v0_21_0.flake = false;
  inputs.src-allographer-v0_21_0.type = "github";
  inputs.src-allographer-v0_21_0.owner = "itsumura-h";
  inputs.src-allographer-v0_21_0.repo = "nim-allographer";
  inputs.src-allographer-v0_21_0.ref = "refs/tags/v0.21.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-allographer-v0_21_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-allographer-v0_21_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-allographer-v0_21_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}