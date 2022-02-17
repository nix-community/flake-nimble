{
  description = ''A DFA based regex engine'';
  inputs.src-nregex-v0_0_4.flake = false;
  inputs.src-nregex-v0_0_4.type = "github";
  inputs.src-nregex-v0_0_4.owner = "nitely";
  inputs.src-nregex-v0_0_4.repo = "nregex";
  inputs.src-nregex-v0_0_4.ref = "refs/tags/v0.0.4";
  
  
  inputs."unicodedb".type = "github";
  inputs."unicodedb".owner = "riinr";
  inputs."unicodedb".repo = "flake-nimble";
  inputs."unicodedb".ref = "flake-pinning";
  inputs."unicodedb".dir = "nimpkgs/u/unicodedb";

  
  inputs."unicodeplus".type = "github";
  inputs."unicodeplus".owner = "riinr";
  inputs."unicodeplus".repo = "flake-nimble";
  inputs."unicodeplus".ref = "flake-pinning";
  inputs."unicodeplus".dir = "nimpkgs/u/unicodeplus";

  outputs = { self, nixpkgs, src-nregex-v0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nregex-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nregex-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}