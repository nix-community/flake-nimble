{
  description = ''Websockets wrapper for nim js backend.'';
  inputs.src-jswebsockets-0_1_3.flake = false;
  inputs.src-jswebsockets-0_1_3.type = "github";
  inputs.src-jswebsockets-0_1_3.owner = "stisa";
  inputs.src-jswebsockets-0_1_3.repo = "jswebsockets";
  inputs.src-jswebsockets-0_1_3.ref = "refs/tags/0.1.3";
  
  outputs = { self, nixpkgs, src-jswebsockets-0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jswebsockets-0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jswebsockets-0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}