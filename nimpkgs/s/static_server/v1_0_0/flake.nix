{
  description = ''A tiny static file web server.'';
  inputs.src-static_server-v1_0_0.flake = false;
  inputs.src-static_server-v1_0_0.type = "github";
  inputs.src-static_server-v1_0_0.owner = "bung87";
  inputs.src-static_server-v1_0_0.repo = "nimhttpd";
  inputs.src-static_server-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-static_server-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-static_server-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}