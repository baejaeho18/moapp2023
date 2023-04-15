resizeToAvoidBottomInset: false,
      body: _isGrid
          ? OrientationBuilder(builder: (context, orientation) {
              return ListView(
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ToggleButtons(
                        color: Colors.black.withOpacity(0.60),
                        selectedColor: Colors.blue,
                        selectedBorderColor: Colors.blue,
                        fillColor: Colors.blue.withOpacity(0.08),
                        splashColor: Colors.blue.withOpacity(0.12),
                        hoverColor: Colors.blue.withOpacity(0.04),
                        borderRadius: BorderRadius.circular(4.0),
                        isSelected: _selectViewer,
                        onPressed: (index) {
                          setState(() {
                            if (index == 0) {
                              _isGrid = true;
                              _selectViewer[0] = true;
                              _selectViewer[1] = false;
                            } else {
                              _isGrid = false;
                              _selectViewer[0] = false;
                              _selectViewer[1] = true;
                            }
                          });
                        },
                        children: [
                          Icon(Icons.list),
                          Icon(Icons.grid_view),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                  Container(
                    child: GridView.count(
                      crossAxisCount:
                          orientation == Orientation.portrait ? 2 : 3,
                      padding: const EdgeInsets.all(16.0),
                      childAspectRatio: .75,
                      shrinkWrap: true,
                      children: _buildGridCards(context),
                      physics: BouncingScrollPhysics(),
                    ),
                  ),
                ],
              );
            })
          : ListView(
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ToggleButtons(
                      color: Colors.black.withOpacity(0.60),
                      selectedColor: Colors.blue,
                      selectedBorderColor: Colors.blue,
                      fillColor: Colors.blue.withOpacity(0.08),
                      splashColor: Colors.blue.withOpacity(0.12),
                      hoverColor: Colors.blue.withOpacity(0.04),
                      borderRadius: BorderRadius.circular(4.0),
                      isSelected: _selectViewer,
                      onPressed: (index) {
                        // Respond to button selection
                        setState(() {
                          if (index == 0) {
                            _isGrid = true;
                            _selectViewer[0] = true;
                            _selectViewer[1] = false;
                          } else {
                            _isGrid = false;
                            _selectViewer[0] = false;
                            _selectViewer[1] = true;
                          }
                        });
                      },
                      children: [
                        Icon(Icons.list),
                        Icon(Icons.grid_view),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                Container(
                  child: ListView(
                    padding: const EdgeInsets.all(16.0),
                    shrinkWrap: true,
                    children: _buildListCards(context),
                    physics: BouncingScrollPhysics(),
                  ),
                ),
              ],
            ),
