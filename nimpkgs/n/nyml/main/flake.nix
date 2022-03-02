{
  description = ''Stupid simple YAML-like implementation from YAML to JsonNode'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nyml-main.flake = false;
  inputs.src-nyml-main.type = "github";
  inputs.src-nyml-main.owner = "openpeep";
  inputs.src-nyml-main.repo = "nyml";
  inputs.src-nyml-main.ref = "refs/heads/main";
  inputs.src-nyml-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nyml-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nyml-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nyml-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}