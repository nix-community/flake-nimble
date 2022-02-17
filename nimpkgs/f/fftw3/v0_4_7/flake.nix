{
  description = ''Bindings to the FFTW library'';
  inputs.src-fftw3-v0_4_7.flake = false;
  inputs.src-fftw3-v0_4_7.type = "github";
  inputs.src-fftw3-v0_4_7.owner = "SciNim";
  inputs.src-fftw3-v0_4_7.repo = "nimfftw3";
  inputs.src-fftw3-v0_4_7.ref = "refs/tags/v0.4.7";
  
  
  inputs."arraymancer".type = "github";
  inputs."arraymancer".owner = "riinr";
  inputs."arraymancer".repo = "flake-nimble";
  inputs."arraymancer".ref = "flake-pinning";
  inputs."arraymancer".dir = "nimpkgs/a/arraymancer";

  
  inputs."weave".type = "github";
  inputs."weave".owner = "riinr";
  inputs."weave".repo = "flake-nimble";
  inputs."weave".ref = "flake-pinning";
  inputs."weave".dir = "nimpkgs/w/weave";

  outputs = { self, nixpkgs, src-fftw3-v0_4_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fftw3-v0_4_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fftw3-v0_4_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}