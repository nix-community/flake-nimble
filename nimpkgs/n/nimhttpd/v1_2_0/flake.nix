{
  description = ''A tiny static file web server.'';
  inputs.src-nimhttpd-v1_2_0.flake = false;
  inputs.src-nimhttpd-v1_2_0.type = "github";
  inputs.src-nimhttpd-v1_2_0.owner = "h3rald";
  inputs.src-nimhttpd-v1_2_0.repo = "nimhttpd";
  inputs.src-nimhttpd-v1_2_0.ref = "refs/tags/v1.2.0";
  
  outputs = { self, nixpkgs, src-nimhttpd-v1_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimhttpd-v1_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimhttpd-v1_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}