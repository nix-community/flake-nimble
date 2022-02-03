{
  description = ''TwineMedia API client library for Nim'';
  inputs.src-tm_client-main.flake = false;
  inputs.src-tm_client-main.type = "github";
  inputs.src-tm_client-main.owner = "termermc";
  inputs.src-tm_client-main.repo = "nim-tm-client";
  inputs.src-tm_client-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-tm_client-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tm_client-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tm_client-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}