{
  description = ''Bindings to the FFTW library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fftw3-v0_4_2.flake = false;
  inputs.src-fftw3-v0_4_2.type = "github";
  inputs.src-fftw3-v0_4_2.owner = "SciNim";
  inputs.src-fftw3-v0_4_2.repo = "nimfftw3";
  inputs.src-fftw3-v0_4_2.ref = "refs/tags/v0.4.2";
  inputs.src-fftw3-v0_4_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."arraymancer".type = "github";
  # inputs."arraymancer".owner = "riinr";
  # inputs."arraymancer".repo = "flake-nimble";
  # inputs."arraymancer".ref = "flake-pinning";
  # inputs."arraymancer".dir = "nimpkgs/a/arraymancer";
  # inputs."arraymancer".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."arraymancer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."weave".type = "github";
  # inputs."weave".owner = "riinr";
  # inputs."weave".repo = "flake-nimble";
  # inputs."weave".ref = "flake-pinning";
  # inputs."weave".dir = "nimpkgs/w/weave";
  # inputs."weave".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."weave".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fftw3-v0_4_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fftw3-v0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fftw3-v0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}