{
  description = ''A simple task runner. Run tasks and watch file changes with custom paths.'';
  inputs.src-monit-master.flake = false;
  inputs.src-monit-master.type = "github";
  inputs.src-monit-master.owner = "jiro4989";
  inputs.src-monit-master.repo = "monit";
  inputs.src-monit-master.ref = "refs/heads/master";
  
  
  inputs."yaml".url = "path:../../../y/yaml";
  inputs."yaml".type = "github";
  inputs."yaml".owner = "riinr";
  inputs."yaml".repo = "flake-nimble";
  inputs."yaml".ref = "flake-pinning";
  inputs."yaml".dir = "nimpkgs/y/yaml";

  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-monit-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-monit-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-monit-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}