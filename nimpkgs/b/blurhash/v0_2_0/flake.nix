{
  description = ''Encoder/decoder for blurhash algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-blurhash-v0_2_0.flake = false;
  inputs.src-blurhash-v0_2_0.type = "github";
  inputs.src-blurhash-v0_2_0.owner = "SolitudeSF";
  inputs.src-blurhash-v0_2_0.repo = "blurhash";
  inputs.src-blurhash-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."imageman".type = "github";
  inputs."imageman".owner = "riinr";
  inputs."imageman".repo = "flake-nimble";
  inputs."imageman".ref = "flake-pinning";
  inputs."imageman".dir = "nimpkgs/i/imageman";

  outputs = { self, nixpkgs, flakeNimbleLib, src-blurhash-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blurhash-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-blurhash-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}