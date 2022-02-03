{
  description = ''Websockets wrapper for nim js backend.'';
  inputs.src-jswebsockets-0_1_2.flake = false;
  inputs.src-jswebsockets-0_1_2.type = "github";
  inputs.src-jswebsockets-0_1_2.owner = "stisa";
  inputs.src-jswebsockets-0_1_2.repo = "jswebsockets";
  inputs.src-jswebsockets-0_1_2.ref = "refs/tags/0.1.2";
  
  outputs = { self, nixpkgs, src-jswebsockets-0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jswebsockets-0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jswebsockets-0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}