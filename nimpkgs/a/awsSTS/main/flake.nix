{
  description = ''AWS Security Token Service API in Nim'';
  inputs.src-awsSTS-main.flake = false;
  inputs.src-awsSTS-main.type = "github";
  inputs.src-awsSTS-main.owner = "ThomasTJdev";
  inputs.src-awsSTS-main.repo = "nim_awsSTS";
  inputs.src-awsSTS-main.ref = "refs/heads/main";
  
  
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";

  outputs = { self, nixpkgs, src-awsSTS-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awsSTS-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-awsSTS-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}