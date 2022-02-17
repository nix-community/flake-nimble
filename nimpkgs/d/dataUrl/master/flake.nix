{
  description = ''Easily create data urls! CLI included'';
  inputs.src-dataUrl-master.flake = false;
  inputs.src-dataUrl-master.type = "github";
  inputs.src-dataUrl-master.owner = "thisago";
  inputs.src-dataUrl-master.repo = "dataUrl";
  inputs.src-dataUrl-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-dataUrl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dataUrl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dataUrl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}