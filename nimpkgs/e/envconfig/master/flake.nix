{
  description = ''envconfig provides a function to get config objects from environment variables.'';
  inputs.src-envconfig-master.flake = false;
  inputs.src-envconfig-master.type = "github";
  inputs.src-envconfig-master.owner = "jiro4989";
  inputs.src-envconfig-master.repo = "envconfig";
  inputs.src-envconfig-master.ref = "refs/heads/master";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, src-envconfig-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-envconfig-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-envconfig-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}