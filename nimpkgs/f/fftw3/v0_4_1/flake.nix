{
  description = ''Bindings to the FFTW library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fftw3-v0_4_1.flake = false;
  inputs.src-fftw3-v0_4_1.type = "github";
  inputs.src-fftw3-v0_4_1.owner = "SciNim";
  inputs.src-fftw3-v0_4_1.repo = "nimfftw3";
  inputs.src-fftw3-v0_4_1.ref = "refs/tags/v0.4.1";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fftw3-v0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fftw3-v0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fftw3-v0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}