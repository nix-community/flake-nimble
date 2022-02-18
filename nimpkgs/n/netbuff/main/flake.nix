{
  description = ''Fast and unsafe byte buffering for intensive network data transfer.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-netbuff-main.flake = false;
  inputs.src-netbuff-main.type = "github";
  inputs.src-netbuff-main.owner = "jakubDoka";
  inputs.src-netbuff-main.repo = "netbuff";
  inputs.src-netbuff-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-netbuff-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-netbuff-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-netbuff-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}