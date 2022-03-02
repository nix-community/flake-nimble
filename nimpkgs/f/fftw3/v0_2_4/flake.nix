{
  description = ''Bindings to the FFTW library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fftw3-v0_2_4.flake = false;
  inputs.src-fftw3-v0_2_4.type = "github";
  inputs.src-fftw3-v0_2_4.owner = "SciNim";
  inputs.src-fftw3-v0_2_4.repo = "nimfftw3";
  inputs.src-fftw3-v0_2_4.ref = "refs/tags/v0.2.4";
  inputs.src-fftw3-v0_2_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."arraymancer".type = "github";
  # inputs."arraymancer".owner = "riinr";
  # inputs."arraymancer".repo = "flake-nimble";
  # inputs."arraymancer".ref = "flake-pinning";
  # inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  # inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fftw3-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fftw3-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fftw3-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}