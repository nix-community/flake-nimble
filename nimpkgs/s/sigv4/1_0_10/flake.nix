{
  description = ''Amazon Web Services Signature Version 4'';
  inputs.src-sigv4-1_0_10.flake = false;
  inputs.src-sigv4-1_0_10.type = "github";
  inputs.src-sigv4-1_0_10.owner = "disruptek";
  inputs.src-sigv4-1_0_10.repo = "sigv4";
  inputs.src-sigv4-1_0_10.ref = "refs/tags/1.0.10";
  
  
  inputs."https://github.com/jangko/nimsha2".url = "path:../../../h/https://github.com/jangko/nimsha2";
  inputs."https://github.com/jangko/nimsha2".type = "github";
  inputs."https://github.com/jangko/nimsha2".owner = "riinr";
  inputs."https://github.com/jangko/nimsha2".repo = "flake-nimble";
  inputs."https://github.com/jangko/nimsha2".ref = "flake-pinning";
  inputs."https://github.com/jangko/nimsha2".dir = "nimpkgs/h/https://github.com/jangko/nimsha2";

  outputs = { self, nixpkgs, src-sigv4-1_0_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sigv4-1_0_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sigv4-1_0_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}