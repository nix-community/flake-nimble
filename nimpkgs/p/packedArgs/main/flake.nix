{
  description = ''a convention mainly created for `createThread` proc'';
  inputs.src-packedArgs-main.flake = false;
  inputs.src-packedArgs-main.type = "github";
  inputs.src-packedArgs-main.owner = "hamidb80";
  inputs.src-packedArgs-main.repo = "packedArgs";
  inputs.src-packedArgs-main.ref = "refs/heads/main";
  
  
  inputs."macroplus".url = "path:../../../m/macroplus";
  inputs."macroplus".type = "github";
  inputs."macroplus".owner = "riinr";
  inputs."macroplus".repo = "flake-nimble";
  inputs."macroplus".ref = "flake-pinning";
  inputs."macroplus".dir = "nimpkgs/m/macroplus";

  outputs = { self, nixpkgs, src-packedArgs-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-packedArgs-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-packedArgs-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}