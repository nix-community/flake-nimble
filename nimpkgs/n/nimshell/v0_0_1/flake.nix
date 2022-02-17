{
  description = ''Library for shell scripting in nim'';
  inputs.src-nimshell-v0_0_1.flake = false;
  inputs.src-nimshell-v0_0_1.type = "github";
  inputs.src-nimshell-v0_0_1.owner = "vegansk";
  inputs.src-nimshell-v0_0_1.repo = "nimshell";
  inputs.src-nimshell-v0_0_1.ref = "refs/tags/v0.0.1";
  
  
  inputs."monad".type = "github";
  inputs."monad".owner = "riinr";
  inputs."monad".repo = "flake-nimble";
  inputs."monad".ref = "flake-pinning";
  inputs."monad".dir = "nimpkgs/m/monad";

  outputs = { self, nixpkgs, src-nimshell-v0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimshell-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimshell-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}