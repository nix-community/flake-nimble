{
  description = ''Keyboard typing emulator'';
  inputs.src-autotyper-master.flake = false;
  inputs.src-autotyper-master.type = "github";
  inputs.src-autotyper-master.owner = "kijowski";
  inputs.src-autotyper-master.repo = "autotyper";
  inputs.src-autotyper-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-autotyper-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-autotyper-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-autotyper-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}