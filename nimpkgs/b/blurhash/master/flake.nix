{
  description = ''Encoder/decoder for blurhash algorithm'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-blurhash-master.flake = false;
  inputs.src-blurhash-master.type = "github";
  inputs.src-blurhash-master.owner = "SolitudeSF";
  inputs.src-blurhash-master.repo = "blurhash";
  inputs.src-blurhash-master.ref = "refs/heads/master";
  inputs.src-blurhash-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."imageman".type = "github";
  # inputs."imageman".owner = "riinr";
  # inputs."imageman".repo = "flake-nimble";
  # inputs."imageman".ref = "flake-pinning";
  # inputs."imageman".dir = "nimpkgs/i/imageman";
  # inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-blurhash-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-blurhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-blurhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}