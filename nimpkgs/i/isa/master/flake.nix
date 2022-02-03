{
  description = ''Binding for Intel Storage Acceleration library'';
  inputs.src-isa-master.flake = false;
  inputs.src-isa-master.type = "github";
  inputs.src-isa-master.owner = "nimscale";
  inputs.src-isa-master.repo = "isa";
  inputs.src-isa-master.ref = "refs/heads/master";
  
  
  inputs."collections".url = "path:../../../c/collections";
  inputs."collections".type = "github";
  inputs."collections".owner = "riinr";
  inputs."collections".repo = "flake-nimble";
  inputs."collections".ref = "flake-pinning";
  inputs."collections".dir = "nimpkgs/c/collections";

  outputs = { self, nixpkgs, src-isa-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-isa-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-isa-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}