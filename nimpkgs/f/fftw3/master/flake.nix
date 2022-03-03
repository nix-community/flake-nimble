{
  description = ''Bindings to the FFTW library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-fftw3-master.flake = false;
  inputs.src-fftw3-master.type = "github";
  inputs.src-fftw3-master.owner = "SciNim";
  inputs.src-fftw3-master.repo = "nimfftw3";
  inputs.src-fftw3-master.ref = "refs/heads/master";
  inputs.src-fftw3-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  
  # inputs."zippy".type = "github";
  # inputs."zippy".owner = "riinr";
  # inputs."zippy".repo = "flake-nimble";
  # inputs."zippy".ref = "flake-pinning";
  # inputs."zippy".dir = "nimpkgs/z/zippy";
  # inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-fftw3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fftw3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fftw3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}