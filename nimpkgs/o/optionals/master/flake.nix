{
  description = ''Option types'';
  inputs.src-optionals-master.flake = false;
  inputs.src-optionals-master.type = "github";
  inputs.src-optionals-master.owner = "MasonMcGill";
  inputs.src-optionals-master.repo = "optionals";
  inputs.src-optionals-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".url = "path:../../../n/nimrod";
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-optionals-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-optionals-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-optionals-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}