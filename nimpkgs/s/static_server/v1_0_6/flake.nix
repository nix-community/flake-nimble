{
  description = ''A tiny static file web server.'';
  inputs.src-static_server-v1_0_6.flake = false;
  inputs.src-static_server-v1_0_6.type = "github";
  inputs.src-static_server-v1_0_6.owner = "bung87";
  inputs.src-static_server-v1_0_6.repo = "nimhttpd";
  inputs.src-static_server-v1_0_6.ref = "refs/tags/v1.0.6";
  
  outputs = { self, nixpkgs, src-static_server-v1_0_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-v1_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-static_server-v1_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}