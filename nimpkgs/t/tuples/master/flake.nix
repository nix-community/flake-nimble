{
  description = ''Tuple manipulation utilities'';
  inputs.src-tuples-master.flake = false;
  inputs.src-tuples-master.type = "github";
  inputs.src-tuples-master.owner = "MasonMcGill";
  inputs.src-tuples-master.repo = "tuples";
  inputs.src-tuples-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-tuples-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tuples-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tuples-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}