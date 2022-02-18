{
  description = ''Base32 library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-base32-0_1_3.flake = false;
  inputs.src-base32-0_1_3.type = "github";
  inputs.src-base32-0_1_3.owner = "OpenSystemsLab";
  inputs.src-base32-0_1_3.repo = "base32.nim";
  inputs.src-base32-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-base32-0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base32-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-base32-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}