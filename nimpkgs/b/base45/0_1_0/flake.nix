{
  description = ''Base45 encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-base45-0_1_0.flake = false;
  inputs.src-base45-0_1_0.type = "other";
  inputs.src-base45-0_1_0.owner = "~ehmry";
  inputs.src-base45-0_1_0.repo = "base45";
  inputs.src-base45-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-base45-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base45-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-base45-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}