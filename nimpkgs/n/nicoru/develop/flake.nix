{
  description = ''A container runtime written in Nim'';
  inputs.src-nicoru-develop.flake = false;
  inputs.src-nicoru-develop.type = "github";
  inputs.src-nicoru-develop.owner = "fox0430";
  inputs.src-nicoru-develop.repo = "nicoru";
  inputs.src-nicoru-develop.ref = "refs/heads/develop";
  
  
  inputs."https://github.com/def-/nim-syscall".type = "github";
  inputs."https://github.com/def-/nim-syscall".owner = "riinr";
  inputs."https://github.com/def-/nim-syscall".repo = "flake-nimble";
  inputs."https://github.com/def-/nim-syscall".ref = "flake-pinning";
  inputs."https://github.com/def-/nim-syscall".dir = "nimpkgs/h/https://github.com/def-/nim-syscall";

  
  inputs."seccomp".type = "github";
  inputs."seccomp".owner = "riinr";
  inputs."seccomp".repo = "flake-nimble";
  inputs."seccomp".ref = "flake-pinning";
  inputs."seccomp".dir = "nimpkgs/s/seccomp";

  outputs = { self, nixpkgs, src-nicoru-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nicoru-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nicoru-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}