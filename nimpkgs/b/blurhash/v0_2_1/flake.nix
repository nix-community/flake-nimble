{
  description = ''Encoder/decoder for blurhash algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-blurhash-v0_2_1.flake = false;
  inputs.src-blurhash-v0_2_1.type = "github";
  inputs.src-blurhash-v0_2_1.owner = "SolitudeSF";
  inputs.src-blurhash-v0_2_1.repo = "blurhash";
  inputs.src-blurhash-v0_2_1.ref = "refs/tags/v0.2.1";
  inputs.src-blurhash-v0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."imageman".type = "github";
  # inputs."imageman".owner = "riinr";
  # inputs."imageman".repo = "flake-nimble";
  # inputs."imageman".ref = "flake-pinning";
  # inputs."imageman".dir = "nimpkgs/i/imageman";
  # inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-blurhash-v0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blurhash-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-blurhash-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}