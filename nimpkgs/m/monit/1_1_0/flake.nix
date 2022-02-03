{
  description = ''A simple task runner. Run tasks and watch file changes with custom paths.'';
  inputs.src-monit-1_1_0.flake = false;
  inputs.src-monit-1_1_0.type = "github";
  inputs.src-monit-1_1_0.owner = "jiro4989";
  inputs.src-monit-1_1_0.repo = "monit";
  inputs.src-monit-1_1_0.ref = "refs/tags/1.1.0";
  
  
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

  outputs = { self, nixpkgs, src-monit-1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-monit-1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-monit-1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}