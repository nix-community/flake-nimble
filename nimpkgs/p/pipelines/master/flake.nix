{
  description = ''A tiny framework & language for crafting massively parallel data pipelines'';
  inputs.src-pipelines-master.flake = false;
  inputs.src-pipelines-master.type = "github";
  inputs.src-pipelines-master.owner = "calebwin";
  inputs.src-pipelines-master.repo = "pipelines";
  inputs.src-pipelines-master.ref = "refs/heads/master";
  
  
  inputs."python".url = "path:../../../p/python";
  inputs."python".type = "github";
  inputs."python".owner = "riinr";
  inputs."python".repo = "flake-nimble";
  inputs."python".ref = "flake-pinning";
  inputs."python".dir = "nimpkgs/p/python";

  outputs = { self, nixpkgs, src-pipelines-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pipelines-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pipelines-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}