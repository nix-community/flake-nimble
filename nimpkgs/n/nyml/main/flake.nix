{
  description = ''Stupid simple YAML-like implementation from YAML to JsonNode'';
  inputs.src-nyml-main.flake = false;
  inputs.src-nyml-main.type = "github";
  inputs.src-nyml-main.owner = "openpeep";
  inputs.src-nyml-main.repo = "nyml";
  inputs.src-nyml-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nyml-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nyml-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nyml-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}