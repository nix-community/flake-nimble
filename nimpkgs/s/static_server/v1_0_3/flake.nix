{
  description = ''A tiny static file web server.'';
  inputs.src-static_server-v1_0_3.flake = false;
  inputs.src-static_server-v1_0_3.type = "github";
  inputs.src-static_server-v1_0_3.owner = "bung87";
  inputs.src-static_server-v1_0_3.repo = "nimhttpd";
  inputs.src-static_server-v1_0_3.ref = "refs/tags/v1.0.3";
  
  outputs = { self, nixpkgs, src-static_server-v1_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-v1_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-static_server-v1_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}