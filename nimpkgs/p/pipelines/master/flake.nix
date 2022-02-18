{
  description = ''A tiny framework & language for crafting massively parallel data pipelines'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-pipelines-master.flake = false;
  inputs.src-pipelines-master.type = "github";
  inputs.src-pipelines-master.owner = "calebwin";
  inputs.src-pipelines-master.repo = "pipelines";
  inputs.src-pipelines-master.ref = "refs/heads/master";
  
  
  inputs."python".type = "github";
  inputs."python".owner = "riinr";
  inputs."python".repo = "flake-nimble";
  inputs."python".ref = "flake-pinning";
  inputs."python".dir = "nimpkgs/p/python";

  outputs = { self, nixpkgs, flakeNimbleLib, src-pipelines-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pipelines-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pipelines-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}