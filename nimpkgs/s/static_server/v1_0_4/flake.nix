{
  description = ''A tiny static file web server.'';
  inputs.src-static_server-v1_0_4.flake = false;
  inputs.src-static_server-v1_0_4.type = "github";
  inputs.src-static_server-v1_0_4.owner = "bung87";
  inputs.src-static_server-v1_0_4.repo = "nimhttpd";
  inputs.src-static_server-v1_0_4.ref = "refs/tags/v1.0.4";
  
  outputs = { self, nixpkgs, src-static_server-v1_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-static_server-v1_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-static_server-v1_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}