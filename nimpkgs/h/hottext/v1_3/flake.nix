{
  description = ''Rapid serial text presenter'';
  inputs.src-hottext-v1_3.flake = false;
  inputs.src-hottext-v1_3.type = "other";
  inputs.src-hottext-v1_3.owner = "~ehmry";
  inputs.src-hottext-v1_3.repo = "hottext";
  inputs.src-hottext-v1_3.ref = "refs/tags/v1.3";
  
  
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  
  inputs."typography".type = "github";
  inputs."typography".owner = "riinr";
  inputs."typography".repo = "flake-nimble";
  inputs."typography".ref = "flake-pinning";
  inputs."typography".dir = "nimpkgs/t/typography";

  outputs = { self, nixpkgs, src-hottext-v1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hottext-v1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hottext-v1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}