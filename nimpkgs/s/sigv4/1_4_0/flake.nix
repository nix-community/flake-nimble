{
  description = ''Amazon Web Services Signature Version 4'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sigv4-1_4_0.flake = false;
  inputs.src-sigv4-1_4_0.type = "github";
  inputs.src-sigv4-1_4_0.owner = "disruptek";
  inputs.src-sigv4-1_4_0.repo = "sigv4";
  inputs.src-sigv4-1_4_0.ref = "refs/tags/1.4.0";
  inputs.src-sigv4-1_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/jangko/nimsha2".type = "github";
  # inputs."https://github.com/jangko/nimsha2".owner = "riinr";
  # inputs."https://github.com/jangko/nimsha2".repo = "flake-nimble";
  # inputs."https://github.com/jangko/nimsha2".ref = "flake-pinning";
  # inputs."https://github.com/jangko/nimsha2".dir = "nimpkgs/h/https://github.com/jangko/nimsha2";
  # inputs."https://github.com/jangko/nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/jangko/nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/disruptek/balls".type = "github";
  # inputs."https://github.com/disruptek/balls".owner = "riinr";
  # inputs."https://github.com/disruptek/balls".repo = "flake-nimble";
  # inputs."https://github.com/disruptek/balls".ref = "flake-pinning";
  # inputs."https://github.com/disruptek/balls".dir = "nimpkgs/h/https://github.com/disruptek/balls";
  # inputs."https://github.com/disruptek/balls".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/disruptek/balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sigv4-1_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sigv4-1_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sigv4-1_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}